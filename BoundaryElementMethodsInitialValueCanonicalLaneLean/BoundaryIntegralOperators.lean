import HautevilleHouse.BoundaryElementMethodsInitialValueCanonicalLaneLean.TimeSteppingBEM

/-!
# Boundary Integral Operators Package
-/

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure BoundaryIntegralOperators {T : TimeSteppingBEM} where
  singleLayerPotential : Prop
  doubleLayerPotential : Prop
  invertibility : Prop
  compositionRule : Prop

structure BoundaryIntegralOperatorsEvidence {T : TimeSteppingBEM} (B : BoundaryIntegralOperators T) where
  singleLayerPotentialClosed : B.singleLayerPotential
  doubleLayerPotentialClosed : B.doubleLayerPotential
  invertibilityClosed : B.invertibility
  compositionRuleClosed : B.compositionRule

def BoundaryIntegralOperatorsClosed {T : TimeSteppingBEM} (B : BoundaryIntegralOperators T) : Prop :=
  B.singleLayerPotential ∧ B.doubleLayerPotential ∧ B.invertibility ∧ B.compositionRule

theorem boundary_integral_operators_closed_from_evidence
    {T : TimeSteppingBEM} (B : BoundaryIntegralOperators T) (E : BoundaryIntegralOperatorsEvidence B) :
    BoundaryIntegralOperatorsClosed B := by
  exact And.intro E.singleLayerPotentialClosed
    (And.intro E.doubleLayerPotentialClosed
      (And.intro E.invertibilityClosed E.compositionRuleClosed))

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse