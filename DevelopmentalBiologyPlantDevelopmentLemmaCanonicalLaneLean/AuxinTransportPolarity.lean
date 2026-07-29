import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure AuxinTransportPolarityPackage where
  pinProteins : Type u
  auxinEfflux : Prop
  polarityEstablishment : Prop
  feedbackLoop : Prop

structure AuxinTransportPolarityEvidence (A : AuxinTransportPolarityPackage) where
  auxinEffluxClosed : A.auxinEfflux
  polarityEstablishmentClosed : A.polarityEstablishment
  feedbackLoopClosed : A.feedbackLoop

def AuxinTransportPolarityClosed (A : AuxinTransportPolarityPackage) : Prop :=
  A.auxinEfflux ∧ A.polarityEstablishment ∧ A.feedbackLoop

theorem auxin_transport_polarity_closed_from_evidence (A : AuxinTransportPolarityPackage)
    (E : AuxinTransportPolarityEvidence A) : AuxinTransportPolarityClosed A := by
  exact And.intro E.auxinEffluxClosed (And.intro E.polarityEstablishmentClosed E.feedbackLoopClosed)

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse