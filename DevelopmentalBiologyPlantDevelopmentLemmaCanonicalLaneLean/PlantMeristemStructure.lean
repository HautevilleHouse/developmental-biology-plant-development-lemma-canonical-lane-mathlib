import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure MeristemStructurePackage where
  shootApical : Type u
  rootApical : Type v
  stemCellNiche : Prop
  zoneDifferentiation : Prop
  hormonalRegulation : Prop

structure MeristemStructureEvidence (M : MeristemStructurePackage) where
  stemCellNicheClosed : M.stemCellNiche
  zoneDifferentiationClosed : M.zoneDifferentiation
  hormonalRegulationClosed : M.hormonalRegulation

def MeristemStructureClosed (M : MeristemStructurePackage) : Prop :=
  M.stemCellNiche ∧ M.zoneDifferentiation ∧ M.hormonalRegulation

theorem meristem_structure_closed_from_evidence (M : MeristemStructurePackage) (E : MeristemStructureEvidence M) :
  MeristemStructureClosed M := by
  exact And.intro E.stemCellNicheClosed (And.intro E.zoneDifferentiationClosed E.hormonalRegulationClosed)

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse