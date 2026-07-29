import PlantDevelopmentGateLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

def ConstrainedPlantDevelopmentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_plant_development_endgame (A : AdmissibleClass) :
    ConstrainedPlantDevelopmentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse