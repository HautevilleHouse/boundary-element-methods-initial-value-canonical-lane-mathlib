import HautevilleHouse.BoundaryElementMethodsInitialValueCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BEMWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse