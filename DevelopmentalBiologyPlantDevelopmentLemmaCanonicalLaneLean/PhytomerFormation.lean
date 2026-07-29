import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean.PlantMeristemStructure

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure PhytomerFormationPackage {M : MeristemStructurePackage} where
  nodeInitiation : Prop
  internodeElongation : Prop
  leafPrimordium : Prop
  phyllotacticPattern : Prop

structure PhytomerFormationEvidence {M : MeristemStructurePackage} (P : PhytomerFormationPackage M) where
  nodeInitiationClosed : P.nodeInitiation
  internodeElongationClosed : P.internodeElongation
  leafPrimordiumClosed : P.leafPrimordium
  phyllotacticPatternClosed : P.phyllotacticPattern

def PhytomerFormationClosed {M : MeristemStructurePackage} (P : PhytomerFormationPackage M) : Prop :=
  P.nodeInitiation ∧ P.internodeElongation ∧ P.leafPrimordium ∧ P.phyllotacticPattern

theorem phytomer_formation_closed_from_evidence {M : MeristemStructurePackage}
    (P : PhytomerFormationPackage M) (E : PhytomerFormationEvidence P) :
  PhytomerFormationClosed P := by
  exact And.intro E.nodeInitiationClosed
    (And.intro E.internodeElongationClosed
      (And.intro E.leafPrimordiumClosed E.phyllotacticPatternClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse