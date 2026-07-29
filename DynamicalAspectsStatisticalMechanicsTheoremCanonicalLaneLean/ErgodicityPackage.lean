import DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.ThermodynamicLimitBridge

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure ErgodicityPackage where
  invariantMeasures : Type u
  ergodicMeasuresNonempty : Prop
  decompositionUnique : Prop

structure ErgodicityEvidence (E : ErgodicityPackage) where
  ergodicMeasuresNonemptyClosed : E.ergodicMeasuresNonempty
  decompositionUniqueClosed : E.decompositionUnique

def ErgodicityClosed (E : ErgodicityPackage) : Prop :=
  E.ergodicMeasuresNonempty ∧ E.decompositionUnique

theorem ergodicity_closed_from_evidence (E : ErgodicityPackage) (Ev : ErgodicityEvidence E) : ErgodicityClosed E :=
  And.intro Ev.ergodicMeasuresNonemptyClosed Ev.decompositionUniqueClosed

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse