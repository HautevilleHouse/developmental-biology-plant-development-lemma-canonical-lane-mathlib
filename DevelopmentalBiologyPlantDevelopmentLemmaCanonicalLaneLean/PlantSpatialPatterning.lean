import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean.PlantDevelopmentLemma

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure PlantSpatialPatterningPackage (P : PlantDevelopmentLemmaPackage) where
  morphogenGradientModel : Prop
  phyllotaxisPattern : Prop
  meristemOrganisation : Prop
  leafVenationNetwork : Prop

structure PlantSpatialPatterningEvidence {P : PlantDevelopmentLemmaPackage} (S : PlantSpatialPatterningPackage P) where
  morphogenGradientModelClosed : S.morphogenGradientModel
  phyllotaxisPatternClosed : S.phyllotaxisPattern
  meristemOrganisationClosed : S.meristemOrganisation
  leafVenationNetworkClosed : S.leafVenationNetwork

def PlantSpatialPatterningClosed {P : PlantDevelopmentLemmaPackage} (S : PlantSpatialPatterningPackage P) : Prop :=
  S.morphogenGradientModel ∧ S.phyllotaxisPattern ∧ S.meristemOrganisation ∧ S.leafVenationNetwork

theorem plant_spatial_patterning_closed_from_evidence {P : PlantDevelopmentLemmaPackage} (S : PlantSpatialPatterningPackage P) (E : PlantSpatialPatterningEvidence S) : PlantSpatialPatterningClosed S := by
  exact And.intro E.morphogenGradientModelClosed
    (And.intro E.phyllotaxisPatternClosed
      (And.intro E.meristemOrganisationClosed E.leafVenationNetworkClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
