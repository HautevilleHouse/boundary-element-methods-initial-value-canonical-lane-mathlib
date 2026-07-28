import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure BEMAdmittedObject where
  boundaryEquation : Type
  timeDomain : Type
  solutionExists : Prop
  conclusion : solutionExists

structure AdmissibleClass where
  object : BEMAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BEMWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BEMWitnessClosed (O : BEMAdmittedObject) : Prop :=
  O.solutionExists

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse