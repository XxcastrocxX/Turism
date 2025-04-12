document.addEventListener('DOMContentLoaded', function() {
    const profileDropdown = document.querySelector('.profile-dropdown');
    const profileButton = document.querySelector('.profile_button');

    // Обработчик для кнопки профиля
    profileButton.addEventListener('click', function(e) {
        e.stopPropagation(); // Предотвращаем всплытие
        profileDropdown.classList.toggle('active');
    });

    // Закрытие при клике вне меню
    document.addEventListener('click', function(e) {
        if (!e.target.closest('.profile-dropdown')) {
            profileDropdown.classList.remove('active');
        }
    });
   
            
    // 1. Проверяем загрузился ли API
    if (typeof ymaps === 'undefined') {
        console.error('Yandex Maps API не загружен');
        return;
    }

    // 2. Ожидаем полной готовности API
    ymaps.ready().then(() => {
        try {
            // 3. Проверяем существование контейнера
            const mapContainer = document.getElementById('map');
            if (!mapContainer) {
                throw new Error('Элемент с id="map" не найден');
            }

            // 4. Координаты с защитой от ошибок
            const validateCoords = (coords) => {
                if (!Array.isArray(coords) || coords.length !== 2) return false;
                return !isNaN(coords[0]) && !isNaN(coords[1]);
            };

            // 5. Границы Краснодарского края
            const krasnodarBounds = [
                [43.3410, 36.6653],
                [47.2500, 40.0553]
            ].filter(validateCoords);

            if (krasnodarBounds.length !== 2) {
                throw new Error('Некорректные координаты границ');
            }

            // 6. Создаем карту
            const myMap = new ymaps.Map(mapContainer, {
                center: [45.0333, 38.9833],
                zoom: 10,
                controls: ['zoomControl', 'typeSelector']
            });

            // 7. Устанавливаем границы с обработкой ошибок
            myMap.setBounds(krasnodarBounds, {
                checkZoomRange: true,
                zoomMargin: 15
            }).catch(e => {
                console.warn('Ошибка установки границ:', e);
                myMap.setCenter([45.0333, 38.9833], 6);
            });

            // 8. Настройки ограничений
            myMap.options.set({
                restrictMapArea: [
                    [42.5, 35.5], // Расширенные границы
                    [48.0, 41.0]
                ],
                maxZoom: 12,
                minZoom: 4
            });

            // 9. Создаем полигон границ
            const polygonCoords = [
                [43.3410, 36.6653],
                [47.2500, 36.6653],
                [47.2500, 40.0553],
                [43.3410, 40.0553],
                [43.3410, 36.6653]
            ].filter(validateCoords);

      

        } catch (error) {
            console.error('Ошибка инициализации карты:', error);
            // Показываем сообщение об ошибке
            const errorDiv = document.createElement('div');
            errorDiv.style.cssText = `
                position: fixed;
                top: 20px;
                left: 20px;
                padding: 15px;
                background: #ffebee;
                color: #c62828;
                border: 1px solid #ef9a9a;
                border-radius: 4px;
                z-index: 1000;
            `;
            errorDiv.textContent = 'Ошибка загрузки карты. Обновите страницу.';
            document.body.appendChild(errorDiv);
        }
    });
});

