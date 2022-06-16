/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import model_staff.service;
import model_staff.user;

/**
 *
 * @author dathp
 */
public class Bloglist {
    private Posts posts;
    private user user;
    private service service;

    public Bloglist() {
    }

    public Bloglist(Posts posts, user user, service service) {
        this.posts = posts;
        this.user = user;
        this.service = service;
    }

    public Posts getPosts() {
        return posts;
    }

    public void setPosts(Posts posts) {
        this.posts = posts;
    }

    public user getUser() {
        return user;
    }

    public void setUser(user user) {
        this.user = user;
    }

    public service getService() {
        return service;
    }

    public void setService(service service) {
        this.service = service;
    }

    @Override
    public String toString() {
        return "Bloglist{" + "posts=" + posts + ", user=" + user + ", service=" + service + '}';
    }
    
    
}
