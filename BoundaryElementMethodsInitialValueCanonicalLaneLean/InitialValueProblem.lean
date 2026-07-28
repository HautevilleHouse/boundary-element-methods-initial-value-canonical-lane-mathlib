import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure InitialValueProblemPackage where
  differentialEquation : Type
  initialData : Type
  timeDomain : Type
  wellposedness : Prop
  solutionRegularity : Prop
  wellposednessTerm : wellposedness
  solutionRegularityTerm : solutionRegularity

structure InitialValueProblemEvidence (IVP : InitialValueProblemPackage) where
  wellposednessClosed : IVP.wellposedness
  solutionRegularityClosed : IVP.solutionRegularity

def InitialValueProblemClosed (IVP : InitialValueProblemPackage) : Prop :=
  IVP.wellposedness ∧ IVP.solutionRegularity

theorem ivp_closed_from_evidence (IVP : InitialValueProblemPackage) (E : InitialValueProblemEvidence IVP) :
    InitialValueProblemClosed IVP := by
  exact And.intro E.wellposednessClosed E.solutionRegularityClosed

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse
