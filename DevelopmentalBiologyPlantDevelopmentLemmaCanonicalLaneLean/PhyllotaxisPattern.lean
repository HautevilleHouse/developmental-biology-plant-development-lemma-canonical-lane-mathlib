import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean

structure PhyllotaxisPatternPackage where
  divergenceAngle : Prop
  primordiumPositioning : Prop
  goldenRatioHypothesis : Prop
  auxinTransportModel : Prop
  patternRobustness : Prop

structure PhyllotaxisPatternEvidence (P : PhyllotaxisPatternPackage) where
  divergenceAngleClosed : P.divergenceAngle
  primordiumPositioningClosed : P.primordiumPositioning
  goldenRatioHypothesisClosed : P.goldenRatioHypothesis
  auxinTransportModelClosed : P.auxinTransportModel
  patternRobustnessClosed : P.patternRobustness

def PhyllotaxisPatternClosed (P : PhyllotaxisPatternPackage) : Prop :=
  P.divergenceAngle ∧ P.primordiumPositioning ∧
  P.goldenRatioHypothesis ∧ P.auxinTransportModel ∧ P.patternRobustness

theorem phyllotaxis_pattern_closed_from_evidence
    (P : PhyllotaxisPatternPackage) (E : PhyllotaxisPatternEvidence P) :
    PhyllotaxisPatternClosed P := by
  exact And.intro E.divergenceAngleClosed
    (And.intro E.primordiumPositioningClosed
      (And.intro E.goldenRatioHypothesisClosed
        (And.intro E.auxinTransportModelClosed E.patternRobustnessClosed)))

end DevelopmentalBiologyPlantDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse