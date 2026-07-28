import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure BoundaryElementDiscretizationPackage {T : Type u} {S : Type v} (P : InitialValuePackage T S) where
  meshType : Type w
  basisFunctions : Type x
  collocationPoints : Type y
  discretizedSystem : Prop
  accuracyOrder : Prop

structure BoundaryElementDiscretizationEvidence {T S : Type u} {P : InitialValuePackage T S}
    (D : BoundaryElementDiscretizationPackage P) where
  discretizedSystemClosed : D.discretizedSystem
  accuracyOrderClosed : D.accuracyOrder

def BoundaryElementDiscretizationClosed {T S : Type u} {P : InitialValuePackage T S}
    (D : BoundaryElementDiscretizationPackage P) : Prop :=
  D.discretizedSystem ∧ D.accuracyOrder

theorem boundary_element_discretization_closed_from_evidence
    {T S : Type u} {P : InitialValuePackage T S} (D : BoundaryElementDiscretizationPackage P)
    (E : BoundaryElementDiscretizationEvidence D) : BoundaryElementDiscretizationClosed D := by
  exact And.intro E.discretizedSystemClosed E.accuracyOrderClosed

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse