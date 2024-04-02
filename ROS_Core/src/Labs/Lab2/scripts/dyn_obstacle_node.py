#!/usr/bin/env python
import rospy
import numpy as np
from frs import FRS
from racecar_msgs.msg import OdometryArray, SetArray
from geometry_msgs.msg import Polygon, Point32
from racecar_obs_detection.srv import GetFRS, GetFRSResponse
from racecar_obs_detection.cfg import configConfig
from dynamic_reconfigure.server import Server

# ROS_Core/src/Labs/Lab2/cfg/config.cfg

# import sys
# sys.path.insert(0,'../')
# import config

from lab2_utils import get_ros_param

def frs2setarray(frs):
    '''
    This function converts a list of FRS to a SetArray message
    Params:
        FRS: list of T reachable sets, each reachable set is [P,2] np.ndarray representing vertices of a polygon
    Returns:
        reachable_sets: SetArray message. A list of T polygon messages.
    '''
    reachable_sets = SetArray()
    for vertices in frs: # For each time step, iterate through all polygons
        polygon = Polygon()
        for x, y in vertices:
            polygon.points.append(Point32(x=x, y=y))
        reachable_sets.set_list.append(polygon)
    return reachable_sets

class DynObstacle():
    def __init__(self):
        # Read ROS topic names to subscribe 
        self.dyn_obs_topic = get_ros_param('~dyn_obs_topic', '/Obstacles/Dynamic')

        self.frs = FRS()

        ###############################################
        ############## TODO ###########################
        # 1. Create a subscriber to get <OdometryArray> message
        #    from the topic <self.dyn_obs_topic>
        #
        # 2. Inside the callback function, save <OdometryArray.odom_list> element
        #       (which is the list of dynamic obstacles' poses)
        #       to the class variable <self.dyn_obstacles>
        #
        # Hint: You can find <OdometryArray> message 
        #    <ROS_Core/src/Utility/Custom_Msgs/msg/OdometryArray.msg>

        self.dyn_obs_sub = rospy.Subscriber(self.dyn_obs_topic, OdometryArray, self.dyn_obs_callback, queue_size=10)

        ###############################################
        # Class variable to store the most recent dynamic obstacle's poses
        self.dyn_obstacles = []
        
        ###############################################
        ############## TODO ###########################
        # 1. Create a Dynamic Reconfigure Server to get <configConfig> message
        #
        # 2. Inside the callback function, extract the following parameters
        #       K_vx, K_vy, K_y, dx, dy, allow_lane_change
        #       and save them to the class variables
        #
        # Hint: You can find <configConfig> message 
        #    <ROS_Core/src/Labs/Lab2/cfg/config.cfg>
        # Here are tutorials for dynamic reconfigure
        # http://wiki.ros.org/dynamic_reconfigure/Tutorials/HowToWriteYourFirstCfgFile
        # http://wiki.ros.org/dynamic_reconfigure/Tutorials/SettingUpDynamicReconfigureForANode%28python%29

        self.dyn_reconf_server = Server(configConfig, self.dyna_reconfig_callback)

        ###############################################
        ############## TODO ###########################
        # 1. Create a ROS Service Server to get <GetFRS> service 
        #   from the topic <'/obstacles/get_frs'>
        #
        # 2. The service server should call <self.srv_cb> function, 
        #   which has been implemented for you.
        #
        # Hint: You can find <GetFRS> service 
        #    <ROS_Core/src/Labs/Lab2/srv/GetFRS.srv>
        # Here is the tutorial for dynamic reconfigure
        # http://wiki.ros.org/ROS/Tutorials/WritingServiceClient%28python%29

        # Create a service server to calculate the FRS
        rospy.init_node("/obstacles/get_frs_server", anonymous = False)
        reset_srv = rospy.Service('/obstacles/get_frs', GetFRS, self.srv_cb)
        rospy.spin()
        ###############################################

    def dyna_reconfig_callback(self, config):
        self.K_vx = config.K_vx
        self.K_vy = config.K_vy
        self.K_y = config.K_y
        self.dx = config.dx
        self.dy = config.dy
        self.allow_lane_change = config.allow_lane_change

    # LAB 2
    def dyn_obs_callback(self, dyn_obs_msg):
        '''
        Subscriber callback function of dynamic obstacles
        '''

        self.dyn_obstacles = dyn_obs_msg.odom_list

    def srv_cb(self, req):
        '''
        This function is a callback function of the service server
        '''

        t_list = req.t_list
        respond = GetFRSResponse() # Create a empty list 
        for obstacle in self.dyn_obstacles: # Iterate through all dynamic obstacles
            frs_list = self.frs.get(obstacle, t_list, self.K_vx, self.K_vy, self.K_y, self.dx, self.dy, allow_lane_change=self.allow_lane_change)
            for frs in frs_list: #  Iterate through N possible FRSs
                respond.FRS.append(frs2setarray(frs))
        return respond
    
if __name__ == '__main__':
    ##########################################
    #TODO: Initialize a ROS Node with a DynObstacle object
    ##########################################
    print("bobbbo")
    DynObstacle()
    