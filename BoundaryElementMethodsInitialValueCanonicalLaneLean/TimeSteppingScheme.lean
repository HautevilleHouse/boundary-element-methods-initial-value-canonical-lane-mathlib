import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure TimeSteppingSchemePackage {P : PotentialTheoryPackage}
    (B : BoundaryIntegralEquationPackage P) where
  timeDiscretization : Type u
  stepSize : Prop
  stability : Prop
  convergenceOrder : Prop

structure TimeSteppingSchemeEvidence {P : PotentialTheoryPackage}
    {B : BoundaryIntegralEquationPackage P}
    (T : TimeSteppingSchemePackage B) where
  timeDiscretizationClosed : T.timeDiscretization
  stepSizeClosed : T.stepSize
  stabilityClosed : T.stability
  convergenceOrderClosed : T.convergenceOrder

def TimeSteppingSchemeClosed {P : PotentialTheoryPackage}
    {B : BoundaryIntegralEquationPackage P}
    (T : TimeSteppingSchemePackage B) : Prop :=
  T.timeDiscretization ∧ T.stepSize ∧ T.stability ∧ T.convergenceOrder

theorem time_stepping_scheme_closed_from_evidence
    {P : PotentialTheoryPackage} {B : BoundaryIntegralEquationPackage P}
    (T : TimeSteppingSchemePackage B) (E : TimeSteppingSchemeEvidence T) :
    TimeSteppingSchemeClosed T := by
  exact And.intro E.timeDiscretizationClosed
    (And.intro E.stepSizeClosed
      (And.intro E.stabilityClosed E.convergenceOrderClosed))

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse