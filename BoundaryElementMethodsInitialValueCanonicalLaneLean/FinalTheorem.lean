import HautevilleHouse.BoundaryElementMethodsInitialValueCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

def ConstrainedBEMClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bem_endgame (A : AdmissibleClass) :
    ConstrainedBEMClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse