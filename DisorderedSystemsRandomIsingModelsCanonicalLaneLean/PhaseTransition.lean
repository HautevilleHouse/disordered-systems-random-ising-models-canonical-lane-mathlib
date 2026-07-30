import canonicalLaneMathlib.AdmissibleClass
import DisorderedSystemsRandomIsingModelsCanonicalLaneLean.IsingHamiltonian

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure PhaseTransitionPackage {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} where
  criticalTemperature : Prop
  spontaneousMagnetization : Prop
  orderParameter : Prop
  lowTemperaturePhase : Prop
  highTemperaturePhase : Prop
  criticalTemperatureTerm : criticalTemperature
  spontaneousMagnetizationTerm : spontaneousMagnetization
  orderParameterTerm : orderParameter
  lowTemperaturePhaseTerm : lowTemperaturePhase
  highTemperaturePhaseTerm : highTemperaturePhase

structure PhaseTransitionEvidence {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} (P : PhaseTransitionPackage H) where
  criticalTemperatureClosed : P.criticalTemperature
  spontaneousMagnetizationClosed : P.spontaneousMagnetization
  orderParameterClosed : P.orderParameter
  lowTemperaturePhaseClosed : P.lowTemperaturePhase
  highTemperaturePhaseClosed : P.highTemperaturePhase

def PhaseTransitionClosed {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} (P : PhaseTransitionPackage H) : Prop :=
  P.criticalTemperature ∧ P.spontaneousMagnetization ∧ P.orderParameter ∧ P.lowTemperaturePhase ∧ P.highTemperaturePhase

theorem phase_transition_closed_from_evidence {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} (P : PhaseTransitionPackage H) (E : PhaseTransitionEvidence P) : PhaseTransitionClosed P :=
  And.intro E.criticalTemperatureClosed (And.intro E.spontaneousMagnetizationClosed (And.intro E.orderParameterClosed (And.intro E.lowTemperaturePhaseClosed E.highTemperaturePhaseClosed)))

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse