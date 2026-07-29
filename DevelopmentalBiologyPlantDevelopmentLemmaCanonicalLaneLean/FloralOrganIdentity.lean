import MeristemPatternFormation

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure FloralOrganIdentityPackage (A : AdmissibleClass) (M : MeristemPatternPackage A) where
  floralMeristemDetermination : Prop
  organIdentityGeneRegulation : Prop
  whorlPatternFormation : Prop
  carpelStamenPetalSepalSpecification : Prop

structure FloralOrganIdentityEvidence (A : AdmissibleClass) (M : MeristemPatternPackage A) (F : FloralOrganIdentityPackage A M) where
  floralMeristemDeterminationClosed : F.floralMeristemDetermination
  organIdentityGeneRegulationClosed : F.organIdentityGeneRegulation
  whorlPatternFormationClosed : F.whorlPatternFormation
  carpelStamenPetalSepalSpecificationClosed : F.carpelStamenPetalSepalSpecification

def FloralOrganIdentityClosed (A : AdmissibleClass) (M : MeristemPatternPackage A) (F : FloralOrganIdentityPackage A M) : Prop :=
  F.floralMeristemDetermination ∧ F.organIdentityGeneRegulation ∧ F.whorlPatternFormation ∧ F.carpelStamenPetalSepalSpecification

theorem floral_organ_identity_closed_from_evidence (A : AdmissibleClass) (M : MeristemPatternPackage A) (F : FloralOrganIdentityPackage A M) (E : FloralOrganIdentityEvidence A M F) : FloralOrganIdentityClosed A M F := by
  exact And.intro E.floralMeristemDeterminationClosed (And.intro E.organIdentityGeneRegulationClosed (And.intro E.whorlPatternFormationClosed E.carpelStamenPetalSepalSpecificationClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse