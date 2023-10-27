import { LightningElement } from 'lwc';

export default class TestLWC extends LightningElement {
    successHandler(event){
        this.dispatchEvent()
    }
}