import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean.PhytomerFormation

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure LeafMorphogenesisPackage {M : MeristemStructurePackage} {P : PhytomerFormationPackage M} where
  leafPolarity : Prop
  bladeExpansion : Prop
  veinPatterning : Prop
  marginDevelopment : Prop

structure LeafMorphogenesisEvidence {M : MeristemStructurePackage} {P : PhytomerFormationPackage M}
    (L : LeafMorphogenesisPackage P) where
  leafPolarityClosed : L.leafPolarity
  bladeExpansionClosed : L.bladeExpansion
  veinPatterningClosed : L.veinPatterning
  marginDevelopmentClosed : L.marginDevelopment

def LeafMorphogenesisClosed {M : MeristemStructurePackage} {P : PhytomerFormationPackage M}
    (L : LeafMorphogenesisPackage P) : Prop :=
  L.leafPolarity ∧ L.bladeExpansion ∧ L.veinPatterning ∧ L.marginDevelopment

theorem leaf_morphogenesis_closed_from_evidence {M : MeristemStructurePackage}
    {P : PhytomerFormationPackage M} (L : LeafMorphogenesisPackage P)
    (E : LeafMorphogenesisEvidence L) : LeafMorphogenesisClosed L := by
  exact And.intro E.leafPolarityClosed
    (And.intro E.bladeExpansionClosed
      (And.intro E.veinPatterningClosed E.marginDevelopmentClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse