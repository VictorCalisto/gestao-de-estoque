require "test_helper"

class HistoricosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historico = historicos(:one)
  end

  test "should get index" do
    get historicos_url
    assert_response :success
  end

  test "should get new" do
    get new_historico_url
    assert_response :success
  end

  test "should create historico" do
    assert_difference("Historico.count") do
      post historicos_url, params: { historico: { data: @historico.data, descricao: @historico.descricao, id_relacionado: @historico.id_relacionado, tipo: @historico.tipo } }
    end

    assert_redirected_to historico_url(Historico.last)
  end

  test "should show historico" do
    get historico_url(@historico)
    assert_response :success
  end

  test "should get edit" do
    get edit_historico_url(@historico)
    assert_response :success
  end

  test "should update historico" do
    patch historico_url(@historico), params: { historico: { data: @historico.data, descricao: @historico.descricao, id_relacionado: @historico.id_relacionado, tipo: @historico.tipo } }
    assert_redirected_to historico_url(@historico)
  end

  test "should destroy historico" do
    assert_difference("Historico.count", -1) do
      delete historico_url(@historico)
    end

    assert_redirected_to historicos_url
  end
end
