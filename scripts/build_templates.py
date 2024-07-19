import os
import shutil
import json


def json_boolean(json_bool):
    if isinstance(json_bool, bool):
        return json_bool
    elif json_bool.lower() == "true":
        return True
    else:
        return False


def main():
    klipper_root = os.path.abspath(os.path.join(__file__, "../.."))
    os.chdir(klipper_root)

    out = os.path.abspath(os.path.join(klipper_root, "./out-bin-templates"))
    if not os.path.exists(out):
        os.makedirs(out)

    templates = os.path.abspath(os.path.join(klipper_root, "./bin-templates"))
    for root, dirs, files in os.walk(templates):
        for file in files:
            if not file.endswith(".json"):
                print("Building " + file + "...")
                shutil.copy2(os.path.join(templates, file), os.path.abspath(os.path.join(__file__, "../../.config")))
                os.system("make clean")
                os.system("make")

                if os.path.exists(os.path.join(templates, file + ".json")):
                    fd = open(os.path.join(templates, file + ".json"))
                    config = json.load(fd)
                    fd.close()

                    if "file_names" in config:
                        file_names = config["file_names"]
                    else:
                        file_names = None

                    if json_boolean(config.get("is_robin", "false")):
                        os.system("./scripts/update_mks_robin.py out/klipper.bin out/" + file + ".bin")
                        if file_names:
                            for file_name in file_names:
                                shutil.copy2(os.path.join(klipper_root, "./out/" + file + ".bin"), os.path.join(out, file_name + ".bin"))
                        else:
                            shutil.copy2(os.path.join(klipper_root, "./out/" + file + ".bin"), os.path.join(out, file + ".bin"))

                    if json_boolean(config.get("is_pico", "false")):
                        ending = ".uf2"
                    else:
                        ending = ".bin"

                    if "file_name" in config:
                        file_name = config["file_name"]
                    else:
                        file_name = file + ending

                    if file_names:
                        if not json_boolean(config.get("is_robin", "false")):
                            shutil.copy2(os.path.join(klipper_root, "./out/klipper" + ending), os.path.join(out, file_name))
                            for additional_name in file_names:
                                shutil.copy2(os.path.join(klipper_root, "./out/klipper" + ending), os.path.join(out, additional_name))
                    else:
                        shutil.copy2(os.path.join(klipper_root, "./out/klipper" + ending), os.path.join(out, file_name))
                else:
                    shutil.copy2(os.path.join(klipper_root, "./out/klipper.bin"), os.path.join(out, file + ".bin"))


main()
