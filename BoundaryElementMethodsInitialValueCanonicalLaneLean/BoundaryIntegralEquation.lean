import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure BoundaryIntegralEquationPackage (P : PotentialTheoryPackage) where
  integralOperator : Type u
  boundaryUnknown : Type v
  systemAssembled : Prop
  wellPosedness : Prop

structure BoundaryIntegralEquationEvidence {P : PotentialTheoryPackage}
    (B : BoundaryIntegralEquationPackage P) where
  integralOperatorClosed : B.integralOperator
  boundaryUnknownClosed : B.boundaryUnknown
  systemAssembledClosed : B.systemAssembled
  wellPosednessClosed : B.wellPosedness

def BoundaryIntegralEquationClosed {P : PotentialTheoryPackage}
    (B : BoundaryIntegralEquationPackage P) : Prop :=
  B.integralOperator ∧ B.boundaryUnknown ∧ B.systemAssembled ∧ B.wellPosedness

theorem boundary_integral_equation_closed_from_evidence
    {P : PotentialTheoryPackage} (B : BoundaryIntegralEquationPackage P)
    (E : BoundaryIntegralEquationEvidence B) :
    BoundaryIntegralEquationClosed B := by
  exact And.intro E.integralOperatorClosed
    (And.intro E.boundaryUnknownClosed
      (And.intro E.systemAssembledClosed E.wellPosednessClosed))

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse