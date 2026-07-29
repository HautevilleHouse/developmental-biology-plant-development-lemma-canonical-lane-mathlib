import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean.PlantDevelopmentLemma

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure CellGrowthRegulationPackage (P : PlantDevelopmentLemmaPackage) where
  cellCycleControl : Prop
  hormoneSignaling : Prop
  turgorPressureModel : Prop
  cellExpansionRegulation : Prop

structure CellGrowthRegulationEvidence {P : PlantDevelopmentLemmaPackage} (C : CellGrowthRegulationPackage P) where
  cellCycleControlClosed : C.cellCycleControl
  hormoneSignalingClosed : C.hormoneSignaling
  turgorPressureModelClosed : C.turgorPressureModel
  cellExpansionRegulationClosed : C.cellExpansionRegulation

def CellGrowthRegulationClosed {P : PlantDevelopmentLemmaPackage} (C : CellGrowthRegulationPackage P) : Prop :=
  C.cellCycleControl ∧ C.hormoneSignaling ∧ C.turgorPressureModel ∧ C.cellExpansionRegulation

theorem cell_growth_regulation_closed_from_evidence {P : PlantDevelopmentLemmaPackage} (C : CellGrowthRegulationPackage P) (E : CellGrowthRegulationEvidence C) : CellGrowthRegulationClosed C := by
  exact And.intro E.cellCycleControlClosed
    (And.intro E.hormoneSignalingClosed
      (And.intro E.turgorPressureModelClosed E.cellExpansionRegulationClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
