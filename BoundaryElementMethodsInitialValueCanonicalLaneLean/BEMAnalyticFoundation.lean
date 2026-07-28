import canonicalLaneMathlib.AdmissibleClass
import BoundaryElementMethodsInitialValueCanonicalLaneLean.PotentialTheory
import BoundaryElementMethodsInitialValueCanonicalLaneLean.BoundaryIntegralEquation
import BoundaryElementMethodsInitialValueCanonicalLaneLean.TimeSteppingScheme

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure BEMAnalyticFoundation where
  potentialTheory : PotentialTheoryPackage
  potentialTheoryEvidence : PotentialTheoryEvidence potentialTheory
  boundaryIntegralEquation : BoundaryIntegralEquationPackage potentialTheory
  boundaryIntegralEquationEvidence : BoundaryIntegralEquationEvidence boundaryIntegralEquation
  timeSteppingScheme : TimeSteppingSchemePackage boundaryIntegralEquation
  timeSteppingSchemeEvidence : TimeSteppingSchemeEvidence timeSteppingScheme

def BEMAnalyticFoundationClosed (A : BEMAnalyticFoundation) : Prop :=
  PotentialTheoryClosed A.potentialTheory ∧
  BoundaryIntegralEquationClosed A.boundaryIntegralEquation ∧
  TimeSteppingSchemeClosed A.timeSteppingScheme

theorem bem_analytic_foundation_closed_from_evidence
    (A : BEMAnalyticFoundation) : BEMAnalyticFoundationClosed A := by
  exact And.intro
    (potential_theory_closed_from_evidence A.potentialTheory A.potentialTheoryEvidence)
    (And.intro
      (boundary_integral_equation_closed_from_evidence A.boundaryIntegralEquation
        A.boundaryIntegralEquationEvidence)
      (time_stepping_scheme_closed_from_evidence A.timeSteppingScheme
        A.timeSteppingSchemeEvidence))

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse