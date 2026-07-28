import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure PotentialTheoryPackage where
  fundamentalSolution : Type u
  layerPotentials : Type v
  jumpRelations : Prop
  continuityAcrossBoundary : Prop

structure PotentialTheoryEvidence (P : PotentialTheoryPackage) where
  fundamentalSolutionClosed : P.fundamentalSolution
  layerPotentialsClosed : P.layerPotentials
  jumpRelationsClosed : P.jumpRelations
  continuityAcrossBoundaryClosed : P.continuityAcrossBoundary

def PotentialTheoryClosed (P : PotentialTheoryPackage) : Prop :=
  P.fundamentalSolution ∧ P.layerPotentials ∧ P.jumpRelations ∧ P.continuityAcrossBoundary

theorem potential_theory_closed_from_evidence
    (P : PotentialTheoryPackage) (E : PotentialTheoryEvidence P) :
    PotentialTheoryClosed P := by
  exact And.intro E.fundamentalSolutionClosed
    (And.intro E.layerPotentialsClosed
      (And.intro E.jumpRelationsClosed E.continuityAcrossBoundaryClosed))

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse