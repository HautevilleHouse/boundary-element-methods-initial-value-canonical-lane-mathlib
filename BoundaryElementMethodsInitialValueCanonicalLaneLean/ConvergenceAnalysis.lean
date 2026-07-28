import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure ConvergenceAnalysisPackage {T : Type u} {S : Type v} {P : InitialValuePackage T S}
    (D : BoundaryElementDiscretizationPackage P) where
  errorEstimate : Prop
  convergenceRate : Prop
  stability : Prop
  consistency : Prop

structure ConvergenceAnalysisEvidence {T S : Type u} {P : InitialValuePackage T S}
    {D : BoundaryElementDiscretizationPackage P} (C : ConvergenceAnalysisPackage D) where
  errorEstimateClosed : C.errorEstimate
  convergenceRateClosed : C.convergenceRate
  stabilityClosed : C.stability
  consistencyClosed : C.consistency

def ConvergenceAnalysisClosed {T S : Type u} {P : InitialValuePackage T S}
    {D : BoundaryElementDiscretizationPackage P} (C : ConvergenceAnalysisPackage D) : Prop :=
  C.errorEstimate ∧ C.convergenceRate ∧ C.stability ∧ C.consistency

theorem convergence_analysis_closed_from_evidence
    {T S : Type u} {P : InitialValuePackage T S} {D : BoundaryElementDiscretizationPackage P}
    (C : ConvergenceAnalysisPackage D) (E : ConvergenceAnalysisEvidence C) :
    ConvergenceAnalysisClosed C := by
  exact And.intro E.errorEstimateClosed
    (And.intro E.convergenceRateClosed
      (And.intro E.stabilityClosed E.consistencyClosed))

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse