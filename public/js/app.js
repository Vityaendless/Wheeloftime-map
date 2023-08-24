const app = Vue.createApp({
	data() {
		return {
			title: 'Welcome to Wheels of time online map!',
			pre: 'Leave marks on the map and get to know this fantasy world better!<br/>The mark on the map will appear after a little moderation.<br/>Double click on the map and enter information.<br/>',
			footer_sign: 'VityaEndless(c)2023',
			sword_visibility: false,
			showModal: false,
			id: '',
			place: undefined,
			text_in_textarea: '',
			limit_in_textarea: 200,
			count_limit_in_textarea: 200,
			text_in_input: '',
			limit_in_input: 50,
			count_limit_in_input: 50,
			//mainmap_element: document.getElementById('mainmap'),
			input_name: document.getElementById('name-event'),
			input_img: document.getElementById('img-event'), 
			desc_text: document.getElementById('info_text'), 
			button: document.getElementById('button'), 
			image: document.getElementById('image-mapper-img'),
			//added_svg: mainmap_element.getElementsByClassName("image-mapper-point"),
		}
	},
  	created() {
    	window.addEventListener('scroll', this.onScroll);
  	},
	methods : {
		toTop(){
			window.scrollTo({
				top: 0,
				left: 0,
				behavior: 'smooth'
			})
		},
    	onScroll() {
    		if (pageYOffset > 200){
    			this.sword_visibility = true
    		} else if (pageYOffset <= 200) {
    			this.sword_visibility = false
    		}
    	},
		getInfo(e){
			this.id = e.target.id;
			let data = localStorage.getItem('data');
			//console.log(typeof data);
			let obj = JSON.parse(data);
			//console.log(typeof obj);
			var size = Object.keys(obj).length;
			//console.log(size);
			for (let i = 0; i < size; i++) {
				//console.log(this.id + " = " + obj[i].id)
				if (obj[i].id == this.id) {
					//alert(obj[i].event_name);
					this.place = obj[i]
				}
			}
		},
	},
	watch: {
		text_in_textarea(value) {
				this.count_limit_in_textarea = this.limit_in_textarea - value.length;
		},
		text_in_input(value) {
			this.count_limit_in_input = this.limit_in_input - value.length;
	    },
	},
	//mounted() {
		//this.getInfo()
	//}
})

app.component("modal", {
  template: "#modal-template",
})

app.mount('#app')