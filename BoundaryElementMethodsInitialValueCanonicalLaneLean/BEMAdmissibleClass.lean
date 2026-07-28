import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure BEMInitialValueObject where
  bemProblem : Type u
  boundaryData : Type v
  initialCondition : Prop
  solutionExists : Prop
  conclusion : solutionExists

structure AdmissibleClass where
  object : BEMInitialValueObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BEMWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse