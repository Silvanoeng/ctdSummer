package com.digitalhouse.ApiFilmes.service;

import com.digitalhouse.ApiFilmes.model.Filme;
import com.digitalhouse.ApiFilmes.repository.FilmeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FilmeService {

    @Autowired
    private FilmeRepository repository;

    public List<Filme> selectAll(){
        return repository.findAll();
    }

    public Filme select(Integer id){
        return repository.findById(id).get();
    }

    public void delete(Integer id){
        repository.deleteById(id);
    }

    public Filme editar(Filme filme){
        Filme filmeUpdate = select(filme.getId());
        if (filme.getDescricao()!=null) {
            filmeUpdate.setDescricao(filme.getDescricao());
        }
        if (filme.getTitulo()!=null) {
            filmeUpdate.setTitulo(filme.getTitulo());
        }
        if (filme.getDescricao()!=null) {
            filmeUpdate.setDescricao(filme.getDescricao());
        }

        return repository.save(filmeUpdate);
    }


    public Filme create(Filme filme){
        return repository.save(filme);
    }

}
