<x-layout>
    <x-slot:title>
        {{ $title }}
    </x-slot>
         <div class="col-12" id="image-map-wrapper">
            <div id="image-map-container">
               <div id="image_map" class="image-mapper">
                  <img class="image-mapper-img" id="image-mapper-img" src="img/wot.jpeg">
                  <svg class="image-mapper-svg" id="mainmap" viewBox="0 0 1100 850" preserveAspectRatio="xMaxYMax meet">
                    @foreach ($coords as $coord)
                        <circle cx="{{ $coord->event_x }}" 
                                cy="{{ $coord->event_y }}" 
                                r='5'
                                v-bind:id="{{ $coord->id }}"
                                name="event_point"
                                class="circle"
                                @click.prevent="getInfo($event), showModal = true">
                        </circle>
                    @endforeach
                  </svg>
                  <transition name="modal">
                    <modal v-if="showModal" @close="showModal = false">    
                        <template v-slot:header>
                            <h3>@{{ place.event_name }}</h3>
                        </template>
                        <template v-slot:image>
                            <img :src="place.event_image">
                        </template>
                        <template v-slot:desc>
                            <p>@{{ place.event_desc }}</p>
                        </template>
                    </modal>
                </transition>
               </div>
            </div>
         </div>
         <script>
            var data = @json($coords);

            function showData(d) {
                return JSON.stringify(d, null, 2);
            }

            localStorage.setItem('data', showData(data));
         </script>
</x-layout>