from fabric.api import run # type: ignore

def search_match_in_last_workloads_output_file(file_name: str = "uartlog", match_key: str = "*** PASSED ***") -> int:
    out = run(f"""cd deploy/results-workload/ && LAST_DIR=$(ls | tail -n1) && if [ -d "$LAST_DIR" ]; then grep -n "{match_key}" $LAST_DIR/*/{file_name} || true; fi""")
    out_split = [e for e in out.split('\n') if match_key in e]
    out_count = len(out_split)
    print(f"Found {out_count} '{match_key}' strings in {file_name}")
    return out_count