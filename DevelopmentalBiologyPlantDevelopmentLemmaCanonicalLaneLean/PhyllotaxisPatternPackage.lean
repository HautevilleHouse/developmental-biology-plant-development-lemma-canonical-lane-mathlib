import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure PhyllotaxisPatternPackage where
  fibonacciAngles : Prop
  primordiaInhibition : Prop
  spiralOrdered : Prop
  patternFormationClosed : Prop

structure PhyllotaxisPatternEvidence (P : PhyllotaxisPatternPackage) where
  fibonacciAnglesClosed : P.fibonacciAngles
  primordiaInhibitionClosed : P.primordiaInhibition
  spiralOrderedClosed : P.spiralOrdered
  patternFormationClosed : P.patternFormationClosed

def PhyllotaxisPatternClosed (P : PhyllotaxisPatternPackage) : Prop :=
  P.fibonacciAngles ∧ P.primordiaInhibition ∧ P.spiralOrdered ∧ P.patternFormationClosed

theorem phyllotaxis_pattern_closed_from_evidence
    (P : PhyllotaxisPatternPackage) (E : PhyllotaxisPatternEvidence P) :
    PhyllotaxisPatternClosed P := by
  exact And.intro E.fibonacciAnglesClosed
    (And.intro E.primordiaInhibitionClosed
      (And.intro E.spiralOrderedClosed E.patternFormationClosed))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
