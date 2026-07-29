import MeristemPatternFormation

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure PhyllotaxisPackage (A : AdmissibleClass) (M : MeristemPatternPackage A) where
  spiralPrimordiaInitiation : Prop
  fibonacciAnglePreference : Prop
  spaceFillingOptimization : Prop
  inhibitorDiffusionField : Prop

structure PhyllotaxisEvidence (A : AdmissibleClass) (M : MeristemPatternPackage A) (P : PhyllotaxisPackage A M) where
  spiralPrimordiaInitiationClosed : P.spiralPrimordiaInitiation
  fibonacciAnglePreferenceClosed : P.fibonacciAnglePreference
  spaceFillingOptimizationClosed : P.spaceFillingOptimization
  inhibitorDiffusionFieldClosed : P.inhibitorDiffusionField

def PhyllotaxisClosed (A : AdmissibleClass) (M : MeristemPatternPackage A) (P : PhyllotaxisPackage A M) : Prop :=
  P.spiralPrimordiaInitiation ∧ P.fibonacciAnglePreference ∧ P.spaceFillingOptimization ∧ P.inhibitorDiffusionField

theorem phyllotaxis_closed_from_evidence (A : AdmissibleClass) (M : MeristemPatternPackage A) (P : PhyllotaxisPackage A M) (E : PhyllotaxisEvidence A M P) : PhyllotaxisClosed A M P := by
  exact And.intro E.spiralPrimordiaInitiationClosed (And.intro E.fibonacciAnglePreferenceClosed (And.intro E.spaceFillingOptimizationClosed E.inhibitorDiffusionFieldClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse