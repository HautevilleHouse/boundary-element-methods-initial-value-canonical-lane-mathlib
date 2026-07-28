import BoundaryElementMethodsInitialValueCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure BoundaryPotentialTheoryPackage where
  singleLayerPotential : Prop
  doubleLayerPotential : Prop
  jumpRelations : Prop
  boundaryIntegralEquation : Prop
  regularityTheory : Prop

structure BoundaryPotentialTheoryEvidence (P : BoundaryPotentialTheoryPackage) where
  singleLayerPotentialClosed : P.singleLayerPotential
  doubleLayerPotentialClosed : P.doubleLayerPotential
  jumpRelationsClosed : P.jumpRelations
  boundaryIntegralEquationClosed : P.boundaryIntegralEquation
  regularityTheoryClosed : P.regularityTheory

def BoundaryPotentialTheoryClosed (P : BoundaryPotentialTheoryPackage) : Prop :=
  P.singleLayerPotential ∧ P.doubleLayerPotential ∧
  P.jumpRelations ∧ P.boundaryIntegralEquation ∧ P.regularityTheory

theorem boundary_potential_theory_closed_from_evidence
    (P : BoundaryPotentialTheoryPackage) (E : BoundaryPotentialTheoryEvidence P) :
    BoundaryPotentialTheoryClosed P := by
  exact And.intro E.singleLayerPotentialClosed
    (And.intro E.doubleLayerPotentialClosed
      (And.intro E.jumpRelationsClosed
        (And.intro E.boundaryIntegralEquationClosed
          E.regularityTheoryClosed)))

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse