import BoundaryElementMethodsInitialValueCanonicalLaneLean.BoundaryPotentialTheory

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure TimeDomainBEMPackage {P : BoundaryPotentialTheoryPackage} (hp : BoundaryPotentialTheoryClosed P) where
  retardedPotential : Prop
  timeSteppingScheme : Prop
  spatialDiscretization : Prop
  convolutionQuadratureInput : Prop
  stabilityCondition : Prop

structure TimeDomainBEMEvidence {P : BoundaryPotentialTheoryPackage} {hp : BoundaryPotentialTheoryClosed P}
    (T : TimeDomainBEMPackage hp) where
  retardedPotentialClosed : T.retardedPotential
  timeSteppingSchemeClosed : T.timeSteppingScheme
  spatialDiscretizationClosed : T.spatialDiscretization
  convolutionQuadratureInputClosed : T.convolutionQuadratureInput
  stabilityConditionClosed : T.stabilityCondition

def TimeDomainBEMClosed {P : BoundaryPotentialTheoryPackage} {hp : BoundaryPotentialTheoryClosed P}
    (T : TimeDomainBEMPackage hp) : Prop :=
  T.retardedPotential ∧ T.timeSteppingScheme ∧
  T.spatialDiscretization ∧ T.convolutionQuadratureInput ∧ T.stabilityCondition

theorem time_domain_bem_closed_from_evidence
    {P : BoundaryPotentialTheoryPackage} {hp : BoundaryPotentialTheoryClosed P}
    (T : TimeDomainBEMPackage hp) (E : TimeDomainBEMEvidence T) :
    TimeDomainBEMClosed T := by
  exact And.intro E.retardedPotentialClosed
    (And.intro E.timeSteppingSchemeClosed
      (And.intro E.spatialDiscretizationClosed
        (And.intro E.convolutionQuadratureInputClosed
          E.stabilityConditionClosed)))

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse