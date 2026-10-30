<#
.SYNOPSIS
    Automated Production Definition of Done (DoD) & Anti-Placeholder Guard.
.DESCRIPTION
    Scans repository files for forbidden shortcuts, loose types, lingering debug statements,
    and unverified placeholders before code is committed or delivered.
#>

param(
    [string]$Path = "."
)

$ErrorActionPreference = "Stop"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " 🛡️  PRODUCTION DEFINITION OF DONE (DoD) VERIFICATION GATE " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$ViolationCount = 0
$WarningCount = 0

# Extensions to scan
$TargetExtensions = @(".ts", ".tsx", ".js", ".jsx", ".py", ".go", ".rs", ".java", ".cs")

# Forbidden pattern definitions (Zero-Tolerance)
$ForbiddenPatterns = @(
    @{ Pattern = '//\s*TODO'; Reason = "Unimplemented TODO comment found in production path" },
    @{ Pattern = '/\*\s*TODO'; Reason = "Unimplemented block TODO comment found" },
    @{ Pattern = '//\s*implement\s+later'; Reason = "Placeholder 'implement later' found" },
    @{ Pattern = '//\s*\.\.\.'; Reason = "Placeholder ellipsis comment found" },
    @{ Pattern = '/\*\s*\.\.\.\s*\*\/'; Reason = "Placeholder block ellipsis found" },
    @{ Pattern = 'pass\s*#\s*todo'; Reason = "Python stub placeholder found" }
)

# Warning patterns
$WarningPatterns = @(
    @{ Pattern = ':\s*any\b'; Reason = "Unsafe loose TypeScript 'any' type detected" },
    @{ Pattern = 'debugger;'; Reason = "Lingering debug statement detected" }
)

# Directories to exclude
$ExcludeDirs = @("node_modules", "dist", "build", "target", ".git", ".next", ".venv", "__pycache__", "templates")

$Files = Get-ChildItem -Path $Path -Recurse -File | Where-Object {
    $file = $_
    $ext = $file.Extension.ToLower()
    if ($TargetExtensions -notcontains $ext) { return $false }
    foreach ($dir in $ExcludeDirs) {
        if ($file.FullName -like "*\$dir\*") { return $false }
    }
    return $true
}

Write-Host "Scanning $($Files.Count) source files for DoD compliance..." -ForegroundColor Gray

foreach ($File in $Files) {
    $Lines = Get-Content -Path $File.FullName
    for ($i = 0; $i -lt $Lines.Count; $i++) {
        $LineNumber = $i + 1
        $Line = $Lines[$i]

        # Check Forbidden
        foreach ($Rule in $ForbiddenPatterns) {
            if ($Line -match $Rule.Pattern) {
                Write-Host "❌ [VIOLATION] $($File.FullName):$LineNumber" -ForegroundColor Red
                Write-Host "   Reason: $($Rule.Reason)" -ForegroundColor Yellow
                Write-Host "   Code  : $($Line.Trim())" -ForegroundColor DarkGray
                $ViolationCount++
            }
        }

        # Check Warnings
        foreach ($Warn in $WarningPatterns) {
            if ($Line -match $Warn.Pattern) {
                Write-Host "⚠️  [WARNING] $($File.FullName):$LineNumber" -ForegroundColor Yellow
                Write-Host "   Reason: $($Warn.Reason)" -ForegroundColor DarkYellow
                Write-Host "   Code  : $($Line.Trim())" -ForegroundColor DarkGray
                $WarningCount++
            }
        }
    }
}

# State Ledger Verification
Write-Host "`nChecking Situational Awareness (.agents/STATE.md)..." -ForegroundColor Gray
$StateFile = Join-Path $Path ".agents\STATE.md"
if (Test-Path $StateFile) {
    Write-Host "✅ .agents/STATE.md is present." -ForegroundColor Green
} else {
    Write-Host "⚠️  .agents/STATE.md not found in repository root." -ForegroundColor Yellow
    $WarningCount++
}

Write-Host "==========================================================" -ForegroundColor Cyan
if ($ViolationCount -eq 0) {
    Write-Host " 🎉 ALL DOD GATES PASSED (Violations: 0, Warnings: $WarningCount)" -ForegroundColor Green
    Write-Host "==========================================================" -ForegroundColor Cyan
    exit 0
} else {
    Write-Host " ❌ DOD VERIFICATION FAILED ($ViolationCount violations detected)" -ForegroundColor Red
    Write-Host " Please resolve all placeholders and complete implementations before committing." -ForegroundColor Red
    Write-Host "==========================================================" -ForegroundColor Cyan
    exit 1
}

