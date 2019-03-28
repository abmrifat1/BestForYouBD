export default class Gate{

    constructor(user){
        this.user = user;
    }

    isAdmin(){
        return this.user.type === 'admin';
    }
    isAuthor(){
        return this.user.type === 'author';
    }
    isEditor(){
        return this.user.type === 'editor';
    }
    isUser(){
        return this.user.type === 'user';
    }
    isAdminOrAuthor(){
        if(this.user.type === 'admin' || this.user.type === 'author'){
            return true;
        }
    }
    isAdminOrAuthorOrEditor(){
        if(this.user.type === 'admin' || this.user.type === 'author' || this.user.type === 'editor'){
            return true;
        }
    }
    isAuthorOrUser(){
        if(this.user.type === 'user' || this.user.type === 'author'){
            return true;
        }

    }
}

