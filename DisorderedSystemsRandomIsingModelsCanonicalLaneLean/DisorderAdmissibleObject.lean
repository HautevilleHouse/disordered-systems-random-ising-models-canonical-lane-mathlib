import DisorderedSystemsRandomIsingModelsCanonicalLaneLean.CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure IsingSpinSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure IsingAdmittedObject where
  space : IsingSpinSpace
  disorderedSystem : Prop
  spinHalfConfiguration : Prop
  randomFieldApplied : Prop
  correlationFunctionDecays : Prop
  conclusion : correlationFunctionDecays

structure IsingEndgameState where
  object : IsingAdmittedObject

def IsingWitnessClosed (O : IsingAdmittedObject) : Prop :=
  O.correlationFunctionDecays

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse