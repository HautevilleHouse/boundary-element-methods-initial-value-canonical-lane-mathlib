import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure BEMAdmittedObject where
  space : Type
  timeInterval : Type
  boundary : Type
  initialCondition : Prop
  boundaryCondition : Prop
  solution : Type
  wellposedness : Prop
  conclusion : wellposedness

def BEMWitnessClosed (O : BEMAdmittedObject) : Prop :=
  O.wellposedness

structure BoundaryElementMethodPackage where
  spatialDiscretization : Type
  temporalDiscretization : Type
  shapeFunctions : Type
  quadratureRules : Type
  stability : Prop
  convergence : Prop
  stabilityTerm : stability
  convergenceTerm : convergence

structure BoundaryElementMethodEvidence (P : BoundaryElementMethodPackage) where
  stabilityClosed : P.stability
  convergenceClosed : P.convergence

def BoundaryElementMethodClosed (P : BoundaryElementMethodPackage) : Prop :=
  P.stability ∧ P.convergence

theorem bem_closed_from_evidence (P : BoundaryElementMethodPackage) (E : BoundaryElementMethodEvidence P) :
    BoundaryElementMethodClosed P := by
  exact And.intro E.stabilityClosed E.convergenceClosed

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse
