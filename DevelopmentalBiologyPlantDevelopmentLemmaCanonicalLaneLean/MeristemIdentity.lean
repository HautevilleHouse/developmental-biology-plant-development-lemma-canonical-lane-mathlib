import canonicalLaneMathlib.AdmissibleClass
import CellFateCommitment

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure MeristemIdentityPackage {C : CellFateCommitmentPackage} where
  stemCellNiche : Prop
  wuschelClavataFeedback : Prop
  cytokininSignaling : Prop
  shootApicalMeristemMaintenance : Prop

structure MeristemIdentityEvidence {C : CellFateCommitmentPackage}
    (M : MeristemIdentityPackage C) where
  stemCellNicheClosed : M.stemCellNiche
  wuschelClavataFeedbackClosed : M.wuschelClavataFeedback
  cytokininSignalingClosed : M.cytokininSignaling
  shootApicalMeristemMaintenanceClosed : M.shootApicalMeristemMaintenance

def MeristemIdentityClosed {C : CellFateCommitmentPackage}
    (M : MeristemIdentityPackage C) : Prop :=
  M.stemCellNiche ∧ M.wuschelClavataFeedback ∧
  M.cytokininSignaling ∧ M.shootApicalMeristemMaintenance

theorem meristem_identity_closed_from_evidence
    {C : CellFateCommitmentPackage} (M : MeristemIdentityPackage C)
    (E : MeristemIdentityEvidence M) : MeristemIdentityClosed M := by
  exact And.intro E.stemCellNicheClosed
    (And.intro E.wuschelClavataFeedbackClosed
      (And.intro E.cytokininSignalingClosed E.shootApicalMeristemMaintenanceClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse