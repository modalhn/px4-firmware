add_definitions(
	-D__PX4_LINUX
)

px4_add_board(
	PLATFORM posix
	ARCHITECTURE cortex-a53
	ROMFSROOT px4fmu_common
	TOOLCHAIN arm-linux-gnueabihf
	TESTING
	DRIVERS
		adc/ads1115
		#barometer # all available barometer drivers
		barometer/ms5611
		batt_smbus
		camera_trigger
		differential_pressure # all available differential pressure drivers
		distance_sensor # all available distance sensor drivers
		gps
		#imu # all available imu drivers
		imu/invensense/icm20948 # required for ak09916 mag
		imu/invensense/mpu9250
		#magnetometer # all available magnetometer drivers
		magnetometer/hmc5883
		pca9685_pwm_out
		pwm_out_sim
		rc_input
		rpi_rc_in
		smart_battery/batmon
		#telemetry # all available telemetry drivers
	MODULES
		airspeed_selector
		attitude_estimator_q
		battery_status
		camera_feedback
		commander
		dataman
		ekf2
		esc_battery
		events
		flight_mode_manager
		fw_att_control
		fw_pos_control_l1
		gyro_calibration
		gyro_fft
		land_detector
		landing_target_estimator
		load_mon
		local_position_estimator
		logger
		mag_bias_estimator
		mavlink
		mc_att_control
		mc_autotune_attitude_control
		mc_hover_thrust_estimator
		mc_pos_control
		mc_rate_control
		#micrortps_bridge
		navigator
		rc_update
		rover_pos_control
		sensors
		sih
		#simulator
		temperature_compensation
		uuv_att_control
		uuv_pos_control
		vmount
		vtol_att_control
	SYSTEMCMDS
		dyn
		esc_calib
		led_control
		mixer
		motor_ramp
		motor_test
		param
		perf
		pwm
		sd_bench
		#serial_test
		system_time
		shutdown
		tests # tests and test runner
		#top
		topic_listener
		tune_control
		uorb
		ver
		work_queue
	EXAMPLES
		dyn_hello # dynamically loading modules example
		fake_gps
		fake_imu
		fake_magnetometer
		fixedwing_control # Tutorial code from https://px4.io/dev/example_fixedwing_control
		hello
		#hwtest # Hardware test
		#matlab_csv_serial
		px4_mavlink_debug # Tutorial code from http://dev.px4.io/en/debug/debug_values.html
		px4_simple_app # Tutorial code from http://dev.px4.io/en/apps/hello_sky.html
		rover_steering_control # Rover example app
		uuv_example_app
		work_item
	)
