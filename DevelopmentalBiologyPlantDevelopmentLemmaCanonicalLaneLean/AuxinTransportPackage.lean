import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure AuxinTransportPackage where
  polarTransport : Prop
  pinFormation : Prop
  gradientEstablishment : Prop
  fluxModelClosed : Prop

structure AuxinTransportEvidence (P : AuxinTransportPackage) where
  polarTransportClosed : P.polarTransport
  pinFormationClosed : P.pinFormation
  gradientEstablishmentClosed : P.gradientEstablishment
  fluxModelClosed : P.fluxModelClosed

def AuxinTransportClosed (P : AuxinTransportPackage) : Prop :=
  P.polarTransport ∧ P.pinFormation ∧ P.gradientEstablishment ∧ P.fluxModelClosed

theorem auxin_transport_closed_from_evidence
    (P : AuxinTransportPackage) (E : AuxinTransportEvidence P) :
    AuxinTransportClosed P := by
  exact And.intro E.polarTransportClosed
    (And.intro E.pinFormationClosed
      (And.intro E.gradientEstablishmentClosed E.fluxModelClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
