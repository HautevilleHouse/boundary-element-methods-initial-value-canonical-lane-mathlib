import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure InitialValuePackage where
  timeDomain : Type u
  spatialDomain : Type v
  governingEquation : Prop
  initialCondition : Prop
  boundaryCondition : Prop
  wellPosedness : Prop

structure InitialValueEvidence (P : InitialValuePackage) where
  governingEquationClosed : P.governingEquation
  initialConditionClosed : P.initialCondition
  boundaryConditionClosed : P.boundaryCondition
  wellPosednessClosed : P.wellPosedness

def InitialValueClosed (P : InitialValuePackage) : Prop :=
  P.governingEquation ∧ P.initialCondition ∧ P.boundaryCondition ∧ P.wellPosedness

theorem initial_value_closed_from_evidence (P : InitialValuePackage) (E : InitialValueEvidence P) :
    InitialValueClosed P := by
  exact And.intro E.governingEquationClosed
    (And.intro E.initialConditionClosed
      (And.intro E.boundaryConditionClosed E.wellPosednessClosed))

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse