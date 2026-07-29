import MeristemPatternFormation

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure VascularDifferentiationPackage (A : AdmissibleClass) (M : MeristemPatternPackage A) where
  procambiumSpecification : Prop
  xylemPhloemPatterning : Prop
  auxinCanalization : Prop
  vascularBundleContinuity : Prop

structure VascularDifferentiationEvidence (A : AdmissibleClass) (M : MeristemPatternPackage A) (V : VascularDifferentiationPackage A M) where
  procambiumSpecificationClosed : V.procambiumSpecification
  xylemPhloemPatterningClosed : V.xylemPhloemPatterning
  auxinCanalizationClosed : V.auxinCanalization
  vascularBundleContinuityClosed : V.vascularBundleContinuity

def VascularDifferentiationClosed (A : AdmissibleClass) (M : MeristemPatternPackage A) (V : VascularDifferentiationPackage A M) : Prop :=
  V.procambiumSpecification ∧ V.xylemPhloemPatterning ∧ V.auxinCanalization ∧ V.vascularBundleContinuity

theorem vascular_differentiation_closed_from_evidence (A : AdmissibleClass) (M : MeristemPatternPackage A) (V : VascularDifferentiationPackage A M) (E : VascularDifferentiationEvidence A M V) : VascularDifferentiationClosed A M V := by
  exact And.intro E.procambiumSpecificationClosed (And.intro E.xylemPhloemPatterningClosed (And.intro E.auxinCanalizationClosed E.vascularBundleContinuityClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse