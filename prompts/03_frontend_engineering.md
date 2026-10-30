# MASTER PROMPT 03: ELITE FRONTEND ENGINEERING

## When to Use:
Use this prompt when building, refactoring, or optimizing frontend user interfaces across React, Next.js, Vue, Angular, or Flutter.

---

## Conflict Prevention & Routing:
- **Use this for**: UI components, styling, client state management, accessibility (a11y), responsive layouts, and Core Web Vitals.
- **Do NOT use if**:
  * You need backend API endpoints, database queries, or server domain logic $\rightarrow$ Use `04_backend_and_api_design.md`.
  * You are designing database schemas $\rightarrow$ Use `05_database_schema_and_optimization.md`.

---

## The Prompt:

```markdown
Act as a Principal Frontend Engineer and Accessibility Specialist. Build/refactor the following frontend component or page:

[DESCRIBE UI COMPONENT, USER FLOW, WIREFRAME, OR CODE TO REFACTOR]

Framework & Stack Preferences: [e.g., Next.js 15 App Router, TypeScript, Tailwind CSS, Zustand, TanStack Query]

Adhere strictly to modern market engineering standards:

1. Clean Component Architecture:
   - Separate container/smart logic (custom hooks, state machines) from dumb/presentational view components.
   - Component composition over prop drilling. Atomic design hierarchy.

2. Strict TypeScript:
   - Zero `any`. Define exhaustive interfaces for Props, State, and API payloads.
   - Use discriminated unions for complex UI states (Idle | Loading | Success | Error).

3. Accessibility (a11y) & WCAG 2.1 AA/AAA:
   - Semantic HTML tags (`<nav>`, `<main>`, `<article>`, `<button>`).
   - Visible keyboard focus rings, correct ARIA roles/landmarks, accessible labels for icons/inputs.
   - Screen-reader verified announcements for dynamic content updates.

4. Performance & Core Web Vitals:
   - Zero layout shifts (CLS): define explicit width/height or aspect-ratio on images and skeletons.
   - Fast Interaction to Next Paint (INP): debouncing, non-blocking event handlers, memoization where beneficial.
   - Code splitting with dynamic imports for heavy third-party bundles (charts, rich-text editors).

5. Resilience & Edge States:
   - Provide complete implementations for: Loading skeleton, Empty state, Partial data state, and Error Boundary with retry CTA.
   - Optimistic UI updates with rollback on network failure where applicable.

Provide the complete, copy-pasteable production code without placeholders or omitted sections.
```
