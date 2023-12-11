# TypeScript Union Type From Array

With the new `as const` construct, we can derive a TypeScript union type from
a JavaScript array!

```tsx
const builderSteps = [
  'communications',
  'estimates',
  'health status',
  'procedures'
] as const;

type BuilderStep = (typeof builderSteps)[number];
```

This lets us both type a slice of state, type its updater, and build JSX
elements all from the same array, a virtuous cycle.

```tsx
const [step, setStep] = useState<BuilderStep>('communications')

const handleStepClick = (step: BuilderStep) => setStep(step)

{builderSteps.map(step => <button key={step} onClick={() => handleStepClick(step)}>{step}</button>)}
```

[const assertions](https://www.typescriptlang.org/docs/handbook/release-notes/typescript-3-4.html#const-assertions)
