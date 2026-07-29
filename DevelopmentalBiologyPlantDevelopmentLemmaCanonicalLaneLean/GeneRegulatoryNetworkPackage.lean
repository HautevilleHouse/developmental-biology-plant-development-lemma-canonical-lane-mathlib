import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : Prop
  feedbackLoops : Prop
  meristemIdentityGenes : Prop
  networkDynamicsClosed : Prop

structure GeneRegulatoryNetworkEvidence (N : GeneRegulatoryNetworkPackage) where
  transcriptionFactorsClosed : N.transcriptionFactors
  feedbackLoopsClosed : N.feedbackLoops
  meristemIdentityGenesClosed : N.meristemIdentityGenes
  networkDynamicsClosed : N.networkDynamicsClosed

def GeneRegulatoryNetworkClosed (N : GeneRegulatoryNetworkPackage) : Prop :=
  N.transcriptionFactors ∧ N.feedbackLoops ∧ N.meristemIdentityGenes ∧ N.networkDynamicsClosed

theorem gene_regulatory_network_closed_from_evidence
    (N : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence N) :
    GeneRegulatoryNetworkClosed N := by
  exact And.intro E.transcriptionFactorsClosed
    (And.intro E.feedbackLoopsClosed
      (And.intro E.meristemIdentityGenesClosed E.networkDynamicsClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
