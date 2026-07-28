import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure FundamentalSolutionPackage where
  kernelFunction : Type
  singularityOrder : Nat
  translationInvariance : Prop
  asymptoticExpansion : Prop
  translationInvarianceTerm : translationInvariance
  asymptoticExpansionTerm : asymptoticExpansion

structure FundamentalSolutionEvidence (F : FundamentalSolutionPackage) where
  translationInvarianceClosed : F.translationInvariance
  asymptoticExpansionClosed : F.asymptoticExpansion

def FundamentalSolutionClosed (F : FundamentalSolutionPackage) : Prop :=
  F.translationInvariance ∧ F.asymptoticExpansion

theorem fundamental_solution_closed_from_evidence (F : FundamentalSolutionPackage) (E : FundamentalSolutionEvidence F) :
    FundamentalSolutionClosed F := by
  exact And.intro E.translationInvarianceClosed E.asymptoticExpansionClosed

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse
