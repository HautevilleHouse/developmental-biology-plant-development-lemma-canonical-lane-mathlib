import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean.PlantMeristemStructure

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure ShootApicalMeristemMaintenancePackage {M : MeristemStructurePackage} where
  wuschelClavata : Prop
  stemCellIdentity : Prop
  organBoundary : Prop
  meristemSizeControl : Prop

structure ShootApicalMeristemMaintenanceEvidence {M : MeristemStructurePackage}
    (S : ShootApicalMeristemMaintenancePackage M) where
  wuschelClavataClosed : S.wuschelClavata
  stemCellIdentityClosed : S.stemCellIdentity
  organBoundaryClosed : S.organBoundary
  meristemSizeControlClosed : S.meristemSizeControl

def ShootApicalMeristemMaintenanceClosed {M : MeristemStructurePackage}
    (S : ShootApicalMeristemMaintenancePackage M) : Prop :=
  S.wuschelClavata ∧ S.stemCellIdentity ∧ S.organBoundary ∧ S.meristemSizeControl

theorem shoot_apical_meristem_maintenance_closed_from_evidence {M : MeristemStructurePackage}
    (S : ShootApicalMeristemMaintenancePackage M) (E : ShootApicalMeristemMaintenanceEvidence S) :
  ShootApicalMeristemMaintenanceClosed S := by
  exact And.intro E.wuschelClavataClosed
    (And.intro E.stemCellIdentityClosed
      (And.intro E.organBoundaryClosed E.meristemSizeControlClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse