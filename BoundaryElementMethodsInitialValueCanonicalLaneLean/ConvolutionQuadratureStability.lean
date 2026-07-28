import BoundaryElementMethodsInitialValueCanonicalLaneLean.TimeDomainBEM

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure ConvolutionQuadraturePackage {P : BoundaryPotentialTheoryPackage}
    {hp : BoundaryPotentialTheoryClosed P}
    {T : TimeDomainBEMPackage hp} (ht : TimeDomainBEMClosed T) where
  linearMultistepMethod : Prop
  stabilityRegion : Prop
  orderConditions : Prop
  convolutionWeights : Prop
  errorAnalysis : Prop

structure ConvolutionQuadratureEvidence {P : BoundaryPotentialTheoryPackage}
    {hp : BoundaryPotentialTheoryClosed P}
    {T : TimeDomainBEMPackage hp} {ht : TimeDomainBEMClosed T}
    (C : ConvolutionQuadraturePackage ht) where
  linearMultistepMethodClosed : C.linearMultistepMethod
  stabilityRegionClosed : C.stabilityRegion
  orderConditionsClosed : C.orderConditions
  convolutionWeightsClosed : C.convolutionWeights
  errorAnalysisClosed : C.errorAnalysis

def ConvolutionQuadratureClosed {P : BoundaryPotentialTheoryPackage}
    {hp : BoundaryPotentialTheoryClosed P}
    {T : TimeDomainBEMPackage hp} {ht : TimeDomainBEMClosed T}
    (C : ConvolutionQuadraturePackage ht) : Prop :=
  C.linearMultistepMethod ∧ C.stabilityRegion ∧
  C.orderConditions ∧ C.convolutionWeights ∧ C.errorAnalysis

theorem convolution_quadrature_closed_from_evidence
    {P : BoundaryPotentialTheoryPackage}
    {hp : BoundaryPotentialTheoryClosed P}
    {T : TimeDomainBEMPackage hp} {ht : TimeDomainBEMClosed T}
    (C : ConvolutionQuadraturePackage ht) (E : ConvolutionQuadratureEvidence C) :
    ConvolutionQuadratureClosed C := by
  exact And.intro E.linearMultistepMethodClosed
    (And.intro E.stabilityRegionClosed
      (And.intro E.orderConditionsClosed
        (And.intro E.convolutionWeightsClosed
          E.errorAnalysisClosed)))

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse