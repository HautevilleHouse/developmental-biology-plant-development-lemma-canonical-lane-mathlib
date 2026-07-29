import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure PlantDevelopmentAdmittedObject where
  species : Type
  organ : Type
  meristemModel : Type
  auxinTransport : Prop
  geneRegulatoryNetwork : Prop
  phyllotaxisPattern : Prop
  conclusion : auxinTransport ∧ geneRegulatoryNetwork ∧ phyllotaxisPattern

structure AdmissibleClass where
  object : PlantDevelopmentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PlantDevelopmentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def PlantDevelopmentWitnessClosed (O : PlantDevelopmentAdmittedObject) : Prop :=
  O.auxinTransport ∧ O.geneRegulatoryNetwork ∧ O.phyllotaxisPattern

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
