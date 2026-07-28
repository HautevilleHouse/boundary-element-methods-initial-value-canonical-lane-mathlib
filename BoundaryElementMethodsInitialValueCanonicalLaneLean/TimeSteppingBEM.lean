import HautevilleHouse.BoundaryElementMethodsInitialValueCanonicalLaneLean.AdmissibleClass

/-!
# Time-Stepping BEM Package
-/

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure TimeSteppingBEM where
  convolutionQuadratureOrder : Prop
  stability : Prop
  convergence : Prop
  initialConditionHandling : Prop

structure TimeSteppingBEMEvidence (T : TimeSteppingBEM) where
  convolutionQuadratureOrderClosed : T.convolutionQuadratureOrder
  stabilityClosed : T.stability
  convergenceClosed : T.convergence
  initialConditionHandlingClosed : T.initialConditionHandling

def TimeSteppingBEMClosed (T : TimeSteppingBEM) : Prop :=
  T.convolutionQuadratureOrder ∧ T.stability ∧ T.convergence ∧ T.initialConditionHandling

theorem time_stepping_bem_closed_from_evidence (T : TimeSteppingBEM) (E : TimeSteppingBEMEvidence T) :
    TimeSteppingBEMClosed T := by
  exact And.intro E.convolutionQuadratureOrderClosed
    (And.intro E.stabilityClosed
      (And.intro E.convergenceClosed E.initialConditionHandlingClosed))

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse