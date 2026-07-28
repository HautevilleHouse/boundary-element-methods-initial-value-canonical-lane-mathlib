import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure BoundaryElementMethodDomain where
  boundaryRegion : Type u
  initialState : Type v
  waveOperator : Type w
  domainWellDefined : Prop
  domainWellDefinedTerm : domainWellDefined

structure BemWitnessClosed (O : BEMAdmittedObject) : Prop :=
  problemWellPosed : O.bemWellPosed

theorem bem_witness_closed_iff (O : BEMAdmittedObject) :
    BemWitnessClosed O ↔ O.bemWellPosed := by
  constructor
  · intro h; exact h.problemWellPosed
  · intro h; exact { problemWellPosed := h }

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse