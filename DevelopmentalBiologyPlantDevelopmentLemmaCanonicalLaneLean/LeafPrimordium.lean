import canonicalLaneMathlib.AdmissibleClass
import PhyllotaxisPattern

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure LeafPrimordiumPackage {P : PhyllotaxisPatternPackage} where
  organogenesisInitiation : Prop
  auxinMaximaFormation : Prop
  polarAuxinTransport : Prop
  boundaryGenes : Prop
  primordiumOutgrowth : Prop

structure LeafPrimordiumEvidence {P : PhyllotaxisPatternPackage}
    (L : LeafPrimordiumPackage P) where
  organogenesisInitiationClosed : L.organogenesisInitiation
  auxinMaximaFormationClosed : L.auxinMaximaFormation
  polarAuxinTransportClosed : L.polarAuxinTransport
  boundaryGenesClosed : L.boundaryGenes
  primordiumOutgrowthClosed : L.primordiumOutgrowth

def LeafPrimordiumClosed {P : PhyllotaxisPatternPackage}
    (L : LeafPrimordiumPackage P) : Prop :=
  L.organogenesisInitiation ∧ L.auxinMaximaFormation ∧
  L.polarAuxinTransport ∧ L.boundaryGenes ∧ L.primordiumOutgrowth

theorem leaf_primordium_closed_from_evidence
    {P : PhyllotaxisPatternPackage} (L : LeafPrimordiumPackage P)
    (E : LeafPrimordiumEvidence L) : LeafPrimordiumClosed L := by
  exact And.intro E.organogenesisInitiationClosed
    (And.intro E.auxinMaximaFormationClosed
      (And.intro E.polarAuxinTransportClosed
        (And.intro E.boundaryGenesClosed E.primordiumOutgrowthClosed)))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse