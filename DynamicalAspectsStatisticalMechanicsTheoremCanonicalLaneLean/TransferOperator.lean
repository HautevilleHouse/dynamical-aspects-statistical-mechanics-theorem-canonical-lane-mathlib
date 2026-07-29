import HautevilleHouse.DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure TransferOperatorPackage where
  stateSpace : Type u
  dynamics : (stateSpace → stateSpace) → (stateSpace → ℝ) → (stateSpace → ℝ)
  invariantMeasure : Type v
  spectralGap : ℝ
  spectralGapPositive : spectralGap > 0

structure TransferOperatorEvidence (P : TransferOperatorPackage) where
  spectralGapPositiveClosed : P.spectralGapPositive

def TransferOperatorClosed (P : TransferOperatorPackage) : Prop :=
  P.spectralGapPositive

theorem transfer_operator_closed_from_evidence (P : TransferOperatorPackage)
    (E : TransferOperatorEvidence P) : TransferOperatorClosed P := by
  exact E.spectralGapPositiveClosed

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse