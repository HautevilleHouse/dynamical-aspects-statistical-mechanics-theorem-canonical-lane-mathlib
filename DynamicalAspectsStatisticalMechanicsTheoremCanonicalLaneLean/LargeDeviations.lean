import HautevilleHouse.DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure LargeDeviationsPackage where
  empiricalMeasure : Type u → Type v
  rateFunction : ℝ → ℝ
  lowerSemicontinuous : Prop
  varadhanLemma : Prop

structure LargeDeviationsEvidence (P : LargeDeviationsPackage) where
  lowerSemicontinuousClosed : P.lowerSemicontinuous
  varadhanLemmaClosed : P.varadhanLemma

def LargeDeviationsClosed (P : LargeDeviationsPackage) : Prop :=
  P.lowerSemicontinuous ∧ P.varadhanLemma

theorem large_deviations_closed_from_evidence (P : LargeDeviationsPackage)
    (E : LargeDeviationsEvidence P) : LargeDeviationsClosed P := by
  exact And.intro E.lowerSemicontinuousClosed E.varadhanLemmaClosed

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse