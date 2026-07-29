import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure PlantDevelopmentLemmaPackage where
  plantPopulation : Type u
  cellGrowthRegulation : Prop
  modelPlant : Prop
  geneExpressionDynamics : Prop
  morphogenesisPatternFormed : Prop
  spatialPatterning : Prop

structure PlantDevelopmentLemmaEvidence (P : PlantDevelopmentLemmaPackage) where
  cellGrowthRegulationClosed : P.cellGrowthRegulation
  modelPlantClosed : P.modelPlant
  geneExpressionDynamicsClosed : P.geneExpressionDynamics
  morphogenesisPatternFormedClosed : P.morphogenesisPatternFormed
  spatialPatterningClosed : P.spatialPatterning

def PlantDevelopmentLemmaClosed (P : PlantDevelopmentLemmaPackage) : Prop :=
  P.cellGrowthRegulation ∧ P.modelPlant ∧ P.geneExpressionDynamics ∧ P.morphogenesisPatternFormed ∧ P.spatialPatterning

theorem plant_development_lemma_closed_from_evidence (P : PlantDevelopmentLemmaPackage) (E : PlantDevelopmentLemmaEvidence P) : PlantDevelopmentLemmaClosed P := by
  exact And.intro E.cellGrowthRegulationClosed
    (And.intro E.modelPlantClosed
      (And.intro E.geneExpressionDynamicsClosed
        (And.intro E.morphogenesisPatternFormedClosed E.spatialPatterningClosed)))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
