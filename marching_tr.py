import numpy as np
import trimesh
import matplotlib.pyplot as plt
import sys
import os

def parse_obj(file_path):
    vertices = []
    faces=[]
    with open(file_path, 'r') as file:
        for line in file:
            if line.startswith('v '):
                parts = line.split()
                vertices.append((float(parts[1]), float(parts[2])))
            elif line.startswith('f '):
                parts = line.split()
                face = [int(part.split('/')[0]) -1 for part in parts[1:]]
                faces.append(face)
    return vertices, faces

# Function to load signed distance values from a txt file (first entry contains index and second one the value, gnore first entry)
def load_signed_distance(filename):
    with open(filename, 'r') as file:
        values = [float(line.strip().split()[1]) for line in file]
    return np.array(values)

def find_zero_crossing(v1, v2, d1, d2):
    t = d1 / (d1 - d2)
    return v1 + t * (v2 - v1)

def zero_level_set(vertices, faces, distances):
    zero_crossings = []
    for face in faces:
        vs = vertices[face]
        ds = distances[face]
        crossings = []
        for i in range(3):
            v1, v2 = vs[i], vs[(i + 1) % 3]
            d1, d2 = ds[i], ds[(i + 1) % 3]
            if d1 * d2 < 0:  # Check if they have opposite signs
                crossings.append(find_zero_crossing(v1, v2, d1, d2))
        if len(crossings)==2:
            zero_crossings.append(crossings)
    return zero_crossings

if len(sys.argv) < 2:
    print("Please provide a folder name as an argument.")
    sys.exit(1)

folder_name = sys.argv[1]
filename_obj = folder_name + '.obj'
file_path_obj = os.path.join(folder_name, filename_obj)

# parse  the obj file
vertices, faces = parse_obj(file_path_obj)
vertices = np.array(vertices)
faces = np.array(faces)


# Path to the signed distance values file
filename_distances='distances_'+folder_name+'.txt'
sdf_filename = os.path.join(folder_name, filename_distances)
signed_distances = load_signed_distance(sdf_filename)
signed_distances = np.array(signed_distances)

# Compute the zero level set
find_zero_crossings = zero_level_set(vertices, faces, signed_distances)

# plot the zero level set as a red curve without dots, just lines over the mesh
plt.figure()
for face in faces:
    vs = vertices[face]
    plt.plot(*np.append(vs, [vs[0]], axis=0).T, 'k-')  # Close the triangle

for crossing in find_zero_crossings:
    #make lines thicker
    plt.plot(*np.array(crossing).T, 'r-', linewidth=2)  # Zero level set in red
plt.xlabel('x')
plt.ylabel('y')
plt.title('Zero Level Set of signed Distance Field')
plt.grid(True)
filename_png = folder_name + '_result.png'
filepath_png = os.path.join(folder_name, filename_png)
plt.savefig(filepath_png, dpi=300, bbox_inches='tight')
plt.show()


