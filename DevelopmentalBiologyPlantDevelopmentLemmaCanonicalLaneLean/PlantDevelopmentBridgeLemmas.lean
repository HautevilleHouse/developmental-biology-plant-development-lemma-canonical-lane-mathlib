import PlantDevelopmentAdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PlantWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse